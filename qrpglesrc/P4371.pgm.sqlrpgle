**free

ctl-opt dftactgrp(*no);

dcl-pi P4371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1910.rpgleinc'
/copy 'qrpgleref/P1582.rpgleinc'
/copy 'qrpgleref/P3807.rpgleinc'

dcl-ds T83 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T83 FROM T83 LIMIT 1;

theCharVar = 'Hello from P4371';
dsply theCharVar;
P1910();
P1582();
P3807();
return;