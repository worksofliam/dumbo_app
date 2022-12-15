**free

ctl-opt dftactgrp(*no);

dcl-pi P3745;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2498.rpgleinc'
/copy 'qrpgleref/P2034.rpgleinc'
/copy 'qrpgleref/P2192.rpgleinc'

dcl-ds T641 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T641 FROM T641 LIMIT 1;

theCharVar = 'Hello from P3745';
dsply theCharVar;
P2498();
P2034();
P2192();
return;