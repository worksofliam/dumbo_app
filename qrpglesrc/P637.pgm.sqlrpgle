**free

ctl-opt dftactgrp(*no);

dcl-pi P637;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'

dcl-ds T958 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T958 FROM T958 LIMIT 1;

theCharVar = 'Hello from P637';
dsply theCharVar;
P138();
P140();
P532();
return;