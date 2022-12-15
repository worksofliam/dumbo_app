**free

ctl-opt dftactgrp(*no);

dcl-pi P4878;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2466.rpgleinc'
/copy 'qrpgleref/P2465.rpgleinc'
/copy 'qrpgleref/P3554.rpgleinc'

dcl-ds T929 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T929 FROM T929 LIMIT 1;

theCharVar = 'Hello from P4878';
dsply theCharVar;
P2466();
P2465();
P3554();
return;