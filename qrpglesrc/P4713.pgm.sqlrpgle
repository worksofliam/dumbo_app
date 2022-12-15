**free

ctl-opt dftactgrp(*no);

dcl-pi P4713;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2444.rpgleinc'
/copy 'qrpgleref/P2803.rpgleinc'
/copy 'qrpgleref/P632.rpgleinc'

dcl-ds T781 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T781 FROM T781 LIMIT 1;

theCharVar = 'Hello from P4713';
dsply theCharVar;
callp localProc();
P2444();
P2803();
P632();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4713 in the procedure';
end-proc;