**free

ctl-opt dftactgrp(*no);

dcl-pi P4272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P945.rpgleinc'
/copy 'qrpgleref/P4047.rpgleinc'
/copy 'qrpgleref/P3264.rpgleinc'

dcl-ds theTable extname('T52') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T52 LIMIT 1;

theCharVar = 'Hello from P4272';
dsply theCharVar;
P945();
P4047();
P3264();
return;