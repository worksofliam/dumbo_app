**free

ctl-opt dftactgrp(*no);

dcl-pi P4602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P2021.rpgleinc'

dcl-ds theTable extname('T197') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T197 LIMIT 1;

theCharVar = 'Hello from P4602';
dsply theCharVar;
P116();
P199();
P2021();
return;