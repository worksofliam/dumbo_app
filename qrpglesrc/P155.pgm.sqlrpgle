**free

ctl-opt dftactgrp(*no);

dcl-pi P155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'

dcl-ds T182 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T182 FROM T182 LIMIT 1;

theCharVar = 'Hello from P155';
dsply theCharVar;
P136();
P56();
return;