**free

ctl-opt dftactgrp(*no);

dcl-pi P5585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1210.rpgleinc'
/copy 'qrpgleref/P1242.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'

dcl-ds T709 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T709 FROM T709 LIMIT 1;

theCharVar = 'Hello from P5585';
dsply theCharVar;
callp localProc();
P1210();
P1242();
P402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5585 in the procedure';
end-proc;