**free

ctl-opt dftactgrp(*no);

dcl-pi P2921;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P2381.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds T966 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T966 FROM T966 LIMIT 1;

theCharVar = 'Hello from P2921';
dsply theCharVar;
P211();
P2381();
P255();
return;