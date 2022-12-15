**free

ctl-opt dftactgrp(*no);

dcl-pi P1759;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1597.rpgleinc'
/copy 'qrpgleref/P1206.rpgleinc'
/copy 'qrpgleref/P1402.rpgleinc'

dcl-ds T772 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T772 FROM T772 LIMIT 1;

theCharVar = 'Hello from P1759';
dsply theCharVar;
P1597();
P1206();
P1402();
return;