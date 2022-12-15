**free

ctl-opt dftactgrp(*no);

dcl-pi P714;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds T766 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T766 FROM T766 LIMIT 1;

theCharVar = 'Hello from P714';
dsply theCharVar;
P624();
P217();
P62();
return;