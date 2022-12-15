**free

ctl-opt dftactgrp(*no);

dcl-pi P2674;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2435.rpgleinc'
/copy 'qrpgleref/P2406.rpgleinc'
/copy 'qrpgleref/P1090.rpgleinc'

dcl-ds T1668 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1668 FROM T1668 LIMIT 1;

theCharVar = 'Hello from P2674';
dsply theCharVar;
P2435();
P2406();
P1090();
return;