**free

ctl-opt dftactgrp(*no);

dcl-pi P670;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P296.rpgleinc'
/copy 'qrpgleref/P659.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds T1797 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1797 FROM T1797 LIMIT 1;

theCharVar = 'Hello from P670';
dsply theCharVar;
P296();
P659();
P126();
return;