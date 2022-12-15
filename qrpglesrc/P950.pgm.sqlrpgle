**free

ctl-opt dftactgrp(*no);

dcl-pi P950;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P535.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P937.rpgleinc'

dcl-ds T1757 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1757 FROM T1757 LIMIT 1;

theCharVar = 'Hello from P950';
dsply theCharVar;
P535();
P126();
P937();
return;