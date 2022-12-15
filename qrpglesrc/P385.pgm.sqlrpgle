**free

ctl-opt dftactgrp(*no);

dcl-pi P385;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

dcl-ds T1019 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1019 FROM T1019 LIMIT 1;

theCharVar = 'Hello from P385';
dsply theCharVar;
P211();
P304();
P78();
return;