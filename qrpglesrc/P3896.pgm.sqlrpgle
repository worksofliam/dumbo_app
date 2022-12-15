**free

ctl-opt dftactgrp(*no);

dcl-pi P3896;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1712.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P1316.rpgleinc'

dcl-ds T1304 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1304 FROM T1304 LIMIT 1;

theCharVar = 'Hello from P3896';
dsply theCharVar;
P1712();
P52();
P1316();
return;