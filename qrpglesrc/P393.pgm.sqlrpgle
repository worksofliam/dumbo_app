**free

ctl-opt dftactgrp(*no);

dcl-pi P393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'

dcl-ds T485 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T485 FROM T485 LIMIT 1;

theCharVar = 'Hello from P393';
dsply theCharVar;
P278();
P53();
P203();
return;