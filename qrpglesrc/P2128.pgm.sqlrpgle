**free

ctl-opt dftactgrp(*no);

dcl-pi P2128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1238.rpgleinc'
/copy 'qrpgleref/P984.rpgleinc'
/copy 'qrpgleref/P2021.rpgleinc'

dcl-ds theTable extname('T1021') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1021 LIMIT 1;

theCharVar = 'Hello from P2128';
dsply theCharVar;
P1238();
P984();
P2021();
return;