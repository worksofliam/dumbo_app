**free

ctl-opt dftactgrp(*no);

dcl-pi P329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds T1581 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1581 FROM T1581 LIMIT 1;

theCharVar = 'Hello from P329';
dsply theCharVar;
P252();
P47();
P24();
return;