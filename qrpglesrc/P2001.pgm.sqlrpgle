**free

ctl-opt dftactgrp(*no);

dcl-pi P2001;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1189.rpgleinc'
/copy 'qrpgleref/P1844.rpgleinc'
/copy 'qrpgleref/P1610.rpgleinc'

dcl-ds T146 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T146 FROM T146 LIMIT 1;

theCharVar = 'Hello from P2001';
dsply theCharVar;
P1189();
P1844();
P1610();
return;