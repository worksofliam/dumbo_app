**free

ctl-opt dftactgrp(*no);

dcl-pi P2537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P614.rpgleinc'
/copy 'qrpgleref/P1981.rpgleinc'
/copy 'qrpgleref/P1979.rpgleinc'

dcl-ds theTable extname('T69') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T69 LIMIT 1;

theCharVar = 'Hello from P2537';
dsply theCharVar;
P614();
P1981();
P1979();
return;