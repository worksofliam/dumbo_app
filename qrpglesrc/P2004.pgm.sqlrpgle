**free

ctl-opt dftactgrp(*no);

dcl-pi P2004;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P550.rpgleinc'
/copy 'qrpgleref/P1649.rpgleinc'

dcl-ds theTable extname('T684') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T684 LIMIT 1;

theCharVar = 'Hello from P2004';
dsply theCharVar;
callp localProc();
P291();
P550();
P1649();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2004 in the procedure';
end-proc;