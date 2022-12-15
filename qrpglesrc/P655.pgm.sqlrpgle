**free

ctl-opt dftactgrp(*no);

dcl-pi P655;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds T1577 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1577 FROM T1577 LIMIT 1;

theCharVar = 'Hello from P655';
dsply theCharVar;
P89();
P548();
P164();
return;