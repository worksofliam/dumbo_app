**free

ctl-opt dftactgrp(*no);

dcl-pi P1110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P805.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds T174 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T174 FROM T174 LIMIT 1;

theCharVar = 'Hello from P1110';
dsply theCharVar;
P805();
P20();
P113();
return;