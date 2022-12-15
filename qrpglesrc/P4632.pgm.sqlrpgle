**free

ctl-opt dftactgrp(*no);

dcl-pi P4632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P686.rpgleinc'
/copy 'qrpgleref/P1011.rpgleinc'
/copy 'qrpgleref/P2754.rpgleinc'

dcl-ds theTable extname('T926') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T926 LIMIT 1;

theCharVar = 'Hello from P4632';
dsply theCharVar;
P686();
P1011();
P2754();
return;