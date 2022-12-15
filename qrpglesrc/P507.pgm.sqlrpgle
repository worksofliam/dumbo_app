**free

ctl-opt dftactgrp(*no);

dcl-pi P507;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds T243 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T243 FROM T243 LIMIT 1;

theCharVar = 'Hello from P507';
dsply theCharVar;
P62();
P193();
P278();
return;