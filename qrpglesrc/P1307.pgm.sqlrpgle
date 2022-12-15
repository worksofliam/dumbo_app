**free

ctl-opt dftactgrp(*no);

dcl-pi P1307;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P941.rpgleinc'
/copy 'qrpgleref/P712.rpgleinc'

dcl-ds theTable extname('T297') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T297 LIMIT 1;

theCharVar = 'Hello from P1307';
dsply theCharVar;
P538();
P941();
P712();
return;