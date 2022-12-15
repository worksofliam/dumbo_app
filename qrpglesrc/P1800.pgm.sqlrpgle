**free

ctl-opt dftactgrp(*no);

dcl-pi P1800;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P467.rpgleinc'

dcl-ds theTable extname('T1804') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1804 LIMIT 1;

theCharVar = 'Hello from P1800';
dsply theCharVar;
P231();
P631();
P467();
return;