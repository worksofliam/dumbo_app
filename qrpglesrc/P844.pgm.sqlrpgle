**free

ctl-opt dftactgrp(*no);

dcl-pi P844;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P819.rpgleinc'
/copy 'qrpgleref/P544.rpgleinc'

dcl-ds T164 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T164 FROM T164 LIMIT 1;

theCharVar = 'Hello from P844';
dsply theCharVar;
P252();
P819();
P544();
return;