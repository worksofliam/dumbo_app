**free

ctl-opt dftactgrp(*no);

dcl-pi P1837;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1181.rpgleinc'
/copy 'qrpgleref/P1333.rpgleinc'
/copy 'qrpgleref/P932.rpgleinc'

dcl-ds T559 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T559 FROM T559 LIMIT 1;

theCharVar = 'Hello from P1837';
dsply theCharVar;
callp localProc();
P1181();
P1333();
P932();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1837 in the procedure';
end-proc;