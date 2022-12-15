**free

ctl-opt dftactgrp(*no);

dcl-pi P1898;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P434.rpgleinc'
/copy 'qrpgleref/P1069.rpgleinc'
/copy 'qrpgleref/P933.rpgleinc'

dcl-ds T1161 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1161 FROM T1161 LIMIT 1;

theCharVar = 'Hello from P1898';
dsply theCharVar;
P434();
P1069();
P933();
return;