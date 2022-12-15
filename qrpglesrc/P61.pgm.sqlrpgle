**free

ctl-opt dftactgrp(*no);

dcl-pi P61;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds T978 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T978 FROM T978 LIMIT 1;

theCharVar = 'Hello from P61';
dsply theCharVar;
P43();
P52();
P55();
return;