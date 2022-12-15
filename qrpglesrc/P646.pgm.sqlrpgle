**free

ctl-opt dftactgrp(*no);

dcl-pi P646;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P510.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds T976 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T976 FROM T976 LIMIT 1;

theCharVar = 'Hello from P646';
dsply theCharVar;
P510();
P302();
P23();
return;