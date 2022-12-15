**free

ctl-opt dftactgrp(*no);

dcl-pi P5260;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P4472.rpgleinc'
/copy 'qrpgleref/P176.rpgleinc'

dcl-ds T892 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T892 FROM T892 LIMIT 1;

theCharVar = 'Hello from P5260';
dsply theCharVar;
callp localProc();
P619();
P4472();
P176();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5260 in the procedure';
end-proc;