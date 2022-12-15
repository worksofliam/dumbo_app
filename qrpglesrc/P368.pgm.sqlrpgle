**free

ctl-opt dftactgrp(*no);

dcl-pi P368;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'

dcl-ds T418 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T418 FROM T418 LIMIT 1;

theCharVar = 'Hello from P368';
dsply theCharVar;
P264();
P284();
P231();
return;