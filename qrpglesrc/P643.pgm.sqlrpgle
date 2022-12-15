**free

ctl-opt dftactgrp(*no);

dcl-pi P643;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'

dcl-ds T191 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T191 FROM T191 LIMIT 1;

theCharVar = 'Hello from P643';
dsply theCharVar;
callp localProc();
P557();
P523();
P513();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P643 in the procedure';
end-proc;