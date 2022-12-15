**free

ctl-opt dftactgrp(*no);

dcl-pi P3699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1302.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P3484.rpgleinc'

dcl-ds theTable extname('T999') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T999 LIMIT 1;

theCharVar = 'Hello from P3699';
dsply theCharVar;
P1302();
P246();
P3484();
return;