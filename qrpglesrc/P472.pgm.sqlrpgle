**free

ctl-opt dftactgrp(*no);

dcl-pi P472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds T1734 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1734 FROM T1734 LIMIT 1;

theCharVar = 'Hello from P472';
dsply theCharVar;
P303();
P90();
P49();
return;