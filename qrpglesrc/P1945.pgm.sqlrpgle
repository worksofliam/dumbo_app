**free

ctl-opt dftactgrp(*no);

dcl-pi P1945;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1401.rpgleinc'
/copy 'qrpgleref/P1890.rpgleinc'
/copy 'qrpgleref/P1223.rpgleinc'

dcl-ds theTable extname('T1649') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1649 LIMIT 1;

theCharVar = 'Hello from P1945';
dsply theCharVar;
P1401();
P1890();
P1223();
return;