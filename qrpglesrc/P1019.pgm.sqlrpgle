**free

ctl-opt dftactgrp(*no);

dcl-pi P1019;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'
/copy 'qrpgleref/P972.rpgleinc'

dcl-ds T1307 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1307 FROM T1307 LIMIT 1;

theCharVar = 'Hello from P1019';
dsply theCharVar;
P471();
P766();
P972();
return;