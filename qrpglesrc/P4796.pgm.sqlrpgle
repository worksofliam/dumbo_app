**free

ctl-opt dftactgrp(*no);

dcl-pi P4796;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3576.rpgleinc'
/copy 'qrpgleref/P724.rpgleinc'
/copy 'qrpgleref/P3496.rpgleinc'

dcl-ds T1444 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1444 FROM T1444 LIMIT 1;

theCharVar = 'Hello from P4796';
dsply theCharVar;
P3576();
P724();
P3496();
return;