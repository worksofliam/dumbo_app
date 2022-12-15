**free

ctl-opt dftactgrp(*no);

dcl-pi P104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds T34 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T34 FROM T34 LIMIT 1;

theCharVar = 'Hello from P104';
dsply theCharVar;
P53();
P78();
P98();
return;