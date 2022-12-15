**free

ctl-opt dftactgrp(*no);

dcl-pi P3473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3341.rpgleinc'
/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P1399.rpgleinc'

dcl-ds T977 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T977 FROM T977 LIMIT 1;

theCharVar = 'Hello from P3473';
dsply theCharVar;
P3341();
P210();
P1399();
return;