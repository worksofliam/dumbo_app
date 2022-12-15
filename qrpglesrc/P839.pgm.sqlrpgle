**free

ctl-opt dftactgrp(*no);

dcl-pi P839;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P553.rpgleinc'
/copy 'qrpgleref/P639.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds T240 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T240 FROM T240 LIMIT 1;

theCharVar = 'Hello from P839';
dsply theCharVar;
P553();
P639();
P12();
return;