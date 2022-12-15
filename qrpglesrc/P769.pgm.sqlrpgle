**free

ctl-opt dftactgrp(*no);

dcl-pi P769;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'

dcl-ds T368 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T368 FROM T368 LIMIT 1;

theCharVar = 'Hello from P769';
dsply theCharVar;
P325();
P522();
P757();
return;