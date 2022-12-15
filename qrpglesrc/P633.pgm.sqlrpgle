**free

ctl-opt dftactgrp(*no);

dcl-pi P633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P633';
dsply theCharVar;
P26();
P277();
P430();
return;