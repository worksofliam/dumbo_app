**free

ctl-opt dftactgrp(*no);

dcl-pi P3646;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1535.rpgleinc'
/copy 'qrpgleref/P2090.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds T142 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T142 FROM T142 LIMIT 1;

theCharVar = 'Hello from P3646';
dsply theCharVar;
P1535();
P2090();
P383();
return;