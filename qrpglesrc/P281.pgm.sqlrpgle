**free

ctl-opt dftactgrp(*no);

dcl-pi P281;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds T407 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T407 FROM T407 LIMIT 1;

theCharVar = 'Hello from P281';
dsply theCharVar;
P205();
P116();
P58();
return;