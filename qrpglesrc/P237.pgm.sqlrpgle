**free

ctl-opt dftactgrp(*no);

dcl-pi P237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds T3 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T3 FROM T3 LIMIT 1;

theCharVar = 'Hello from P237';
dsply theCharVar;
P229();
P114();
P29();
return;