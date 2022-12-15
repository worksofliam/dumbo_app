**free

ctl-opt dftactgrp(*no);

dcl-pi P579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'

dcl-ds T520 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T520 FROM T520 LIMIT 1;

theCharVar = 'Hello from P579';
dsply theCharVar;
P79();
P245();
P75();
return;