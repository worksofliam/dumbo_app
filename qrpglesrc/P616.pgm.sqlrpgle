**free

ctl-opt dftactgrp(*no);

dcl-pi P616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P423.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'

dcl-ds T1321 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1321 FROM T1321 LIMIT 1;

theCharVar = 'Hello from P616';
dsply theCharVar;
callp localProc();
P86();
P423();
P146();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P616 in the procedure';
end-proc;