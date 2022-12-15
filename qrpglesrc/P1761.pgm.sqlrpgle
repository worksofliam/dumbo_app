**free

ctl-opt dftactgrp(*no);

dcl-pi P1761;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1580.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'
/copy 'qrpgleref/P683.rpgleinc'

dcl-ds T1822 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1822 FROM T1822 LIMIT 1;

theCharVar = 'Hello from P1761';
dsply theCharVar;
P1580();
P737();
P683();
return;