**free

ctl-opt dftactgrp(*no);

dcl-pi P2375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1022.rpgleinc'
/copy 'qrpgleref/P1992.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'

dcl-ds theTable extname('T1189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1189 LIMIT 1;

theCharVar = 'Hello from P2375';
dsply theCharVar;
P1022();
P1992();
P430();
return;