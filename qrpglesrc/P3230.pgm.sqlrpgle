**free

ctl-opt dftactgrp(*no);

dcl-pi P3230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P1911.rpgleinc'
/copy 'qrpgleref/P1832.rpgleinc'

dcl-ds T1052 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1052 FROM T1052 LIMIT 1;

theCharVar = 'Hello from P3230';
dsply theCharVar;
P367();
P1911();
P1832();
return;