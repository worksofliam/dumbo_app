**free

ctl-opt dftactgrp(*no);

dcl-pi P2665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P365.rpgleinc'
/copy 'qrpgleref/P508.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'

dcl-ds T776 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T776 FROM T776 LIMIT 1;

theCharVar = 'Hello from P2665';
dsply theCharVar;
P365();
P508();
P302();
return;