**free

ctl-opt dftactgrp(*no);

dcl-pi P410;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P403.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds theTable extname('T313') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T313 LIMIT 1;

theCharVar = 'Hello from P410';
dsply theCharVar;
P403();
P229();
P205();
return;