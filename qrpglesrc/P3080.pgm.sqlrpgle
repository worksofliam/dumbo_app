**free

ctl-opt dftactgrp(*no);

dcl-pi P3080;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1452.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'

dcl-ds T1748 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1748 FROM T1748 LIMIT 1;

theCharVar = 'Hello from P3080';
dsply theCharVar;
P1452();
P797();
P572();
return;