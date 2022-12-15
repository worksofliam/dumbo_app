**free

ctl-opt dftactgrp(*no);

dcl-pi P839;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P404.rpgleinc'
/copy 'qrpgleref/P457.rpgleinc'

dcl-ds T207 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T207 FROM T207 LIMIT 1;

theCharVar = 'Hello from P839';
dsply theCharVar;
P167();
P404();
P457();
return;