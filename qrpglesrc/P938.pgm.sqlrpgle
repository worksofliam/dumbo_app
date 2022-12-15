**free

ctl-opt dftactgrp(*no);

dcl-pi P938;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P856.rpgleinc'

dcl-ds T706 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T706 FROM T706 LIMIT 1;

theCharVar = 'Hello from P938';
dsply theCharVar;
P52();
P3();
P856();
return;