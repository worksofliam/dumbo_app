**free

ctl-opt dftactgrp(*no);

dcl-pi P1005;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P970.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'

dcl-ds T68 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T68 FROM T68 LIMIT 1;

theCharVar = 'Hello from P1005';
dsply theCharVar;
P740();
P970();
P552();
return;