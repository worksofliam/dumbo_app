**free

ctl-opt dftactgrp(*no);

dcl-pi P707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds theTable extname('T14') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T14 LIMIT 1;

theCharVar = 'Hello from P707';
dsply theCharVar;
P226();
P148();
P96();
return;